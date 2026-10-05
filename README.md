# SPITITOUT

```text
SPITITOUT by willow
────────────────────────────────────────────────────────────
make your Mac spit the base info out.
```

SPITITOUT is a tiny macOS command that gives you a quick read on what's actually installed.

Run it once and get the useful stuff in one place:

```text
SYSTEM
  macOS        27.0.1
  kernel       27.0.0
  architecture arm64
  shell        zsh
  Homebrew     Homebrew 7.0.7

FORMULAE (62)
  ...

CASKS (9)
  ...

APPLICATIONS (35)
  ...

TOTALS
  formulae       62
  explicit       22
  casks          9
  applications   35
```

No digging through random commands.
No database to maintain.
No account.
No telemetry.
No background process quietly doing its thing.

Just ask your Mac what's there, print the useful bits, and leave.

## Install

```sh
curl -fsSL https://raw.githubusercontent.com/willowio/spititout/main/install.sh | bash
```

Then:

```sh
spititout
```

That's the whole thing.

## What it checks

SPITITOUT pulls together a few things that are normally scattered around your system:

- macOS and basic system information
- Homebrew formulae
- explicitly installed Homebrew formulae
- Homebrew casks
- third-party apps in `/Applications` and `~/Applications`

Apple's built-in apps are left out of the app list, because you already know Safari exists.

Formulae marked with `•` are explicitly installed rather than pulled in as dependencies.

## A couple of tricks

Need something machine-readable?

```sh
spititout --json
```

Want it gone?

```sh
spititout zap
```

SPITITOUT only removes its own installed executable.

## Why it exists

Sometimes you don't need a system profiler with seventeen pages of output.

You just want to look at your Mac and go:

```text
what's on this thing?
```

So that's what SPITITOUT does.

Small command.
Useful output.
No ceremony.

## Open source

SPITITOUT is open source because it's a shell script and there's no reason for it to be mysterious.

Read the code. Change it. Make the output yours. Add something you actually want. Strip something you don't.

If your Mac needs a slightly different version of SPITITOUT, you have the whole thing right there.

## Requirements

- macOS
- Zsh
- Homebrew is optional

Without Homebrew, SPITITOUT still reports system information and installed third-party apps.

## License

MIT
