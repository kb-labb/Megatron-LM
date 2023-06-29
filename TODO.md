args.pad_vocab_size_to

def human_readable_flops(num) -> str:
    for unit in [
        "",
        "KFLOPS",
        "MFLOPS",
        "GFLOPS",
        "TFLOPS",
        "PFLOPS",
        "EFLOPS",
        "ZFLOPS",
    ]:
        if abs(num) < 1000.0:
            return "%3.1f%s" % (num, unit)
        num /= 1000.0
    return "%.1f%s" % (num, "Yi")


def get_flops(neox_args, model, iter_time_s) -> float:
    world_size = torch.distributed.get_world_size()
    ff = model.total_params * 6
    attn = neox_args.seq_length * neox_args.hidden_size * neox_args.num_layers * 60
    flops = (
        neox_args.train_batch_size
        * neox_args.seq_length
        * (ff + attn)
        / (iter_time_s * world_size)
    )
    return flops


tensorboard logging

lm_dataformat for preprocess

multiple corpora or one big one?