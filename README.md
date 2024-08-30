# 유용한 스크립트 모음

## 필수 준비

- **필수 셋팅**: `system_download.txt 파일 /data/work 하위에 위치 필수!!!!`

## 참조 파일

- **셋업 참조 파일**: `system_download.txt(/data/work 하위에 위치 필수!!!!)`

## 각 파일 설명

1. **`all_command.sh`** : 모든 운영 서버 특정 명령 실행시 사용하는 스크립트
2. **`ansible_check.sh`** : 각 서버 ansible 상태 체크하는 스크립트
3. **`docker_container.sh`** : 각 서버 현재 실행중인 도커 컨테이너 스크립트
4. **`jps.check`** : 각 서버 자바 프로세스 확인하는 스크립트
5. **`zookeeper_check.sh`** : 주키퍼 서버 상태 체크하는 스크립트
6. **`zookeeper_restart.sh`** : 주키퍼 서버 재시작 하는 스크립트
7. **`swap_execution.sh`** : 각 서버 swap영역 할당하는 스크립트
8. **`kafka_server_start.sh`** : 카프카 브로커 서버 시작하는 스크립트

## 실행 방법

1. `all_command.sh` 실행할 명령어를 인자로 넣기
   ```sh
   ex) ./all_command.sh "ps aux"
   ```
2. `ansible_check.sh` 바로 실행 가능
   ```sh
   ex) ./ansible_check.sh
   ```
3. `docker_container.sh` 바로 실행 가능
   ```sh
   ex) ./docker_container.sh
   ```
4. `jps.sh` 바로 실행 가능
   ```sh
   ex) ./jps.sh
   ```
5. `zookeeper_check.sh` 주키퍼 경로 넣어주기
   ```sh
   ex) ./zookeeper_check.sh /data/sy0218
   ```
6. `zookeeper_restart.sh` 주키퍼 경로 넣어주기
   ```sh
   ex) ./zookeeper_restart.sh /data/sy0218
   ```
7. `swap_execution.sh` 바로 실행 가능
   ```sh
   ex) ./swap_execution.sh
   ```
8. `kafka_server_start.sh` 카프카 경로 넣어주기
   ```sh
   ex) ./kafka_server_start.sh /data/sy0218
   ```

해당 스크립트 들은 실습 환경에서 편리한 개발을 도와주는 스크립트 모음 입니다.

