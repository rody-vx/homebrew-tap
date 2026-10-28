# rody-vx Homebrew Tap

## 설치

```bash
brew install rody-vx/tap/jcli
```

공식 `jenkins-cli` 와 같은 `jcli` 바이너리를 설치하므로, 설치되어 있다면 먼저 `brew uninstall jenkins-cli` 로 제거한다.

## Formula

| 이름 | 설명 |
| --- | --- |
| `jcli` | [jenkins-cli](https://github.com/rody-vx/jenkins-cli) fork. 플러그인 없이 `job search`, `폴더/잡` 형식 job 이름 지원 |

## 새 버전 반영

1. jenkins-cli 에 태그를 만들고 플랫폼별 `jcli-<os>-<arch>.tar.gz` 를 Release 에 올린다
2. `Formula/jcli.rb` 의 `version`, `url`, `sha256` 을 바꾼다
