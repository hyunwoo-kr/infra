
# CentOS 7에 Apache HTTP Server 컴파일 설치

CentOS 7에 최신 버전의 Apache HTTP Serve 빌드/컴파일 설치를 Vagrant, Ansible 를 사용해서 Code로 관리 해 보자


목표
-----------------------------------------------------------
- Hyper-V에 설치된 CentOS 7에
- Apache HTTP Server 2.4.46 를 설치 해 보자


사전준비
------------------------------------------------------------
- [Windows10 Hyper-V Nat Network 구성하기](../0_common/README.md)
- [Vagrant를 사용한 CentOS 7 Install on Hyper-V](../1_vagrant_centos7_base/README.md)
- [CentOS 7에 openssl 1.1.1 컴파일 설치](../2_openssl_compile_on_centos7/README.md)


## Ansible 를 사용한 구성 자동화

### Step1. CentOS 7 Start usging vagrant

> 반드시, PowerShell 을 관리자 권한으로 실행하여 아래 명령어를 수행해야 함.
```
cd 1_vagrant
vagrant up
```

### Step2. ansible용 ssh key copy

> root password = vagrant
```
ssh-keygen -f "/home/manager/.ssh/known_hosts" -R "161.100.6.10"
ssh-copy-id root@161.100.6.10
```

### Step3. ansbie 실행
```
cd 2_ansible
ansible-playbook -i inventory.ini 0_total.yaml
```

## Manual 설치
[Apache HTTPD 테스트용 Centos7 구성 - 3차](https://hyunwoo-kr.github.io/2021/03/apache-httpd-%ED%85%8C%EC%8A%A4%ED%8A%B8%EC%9A%A9-centos7-%EA%B5%AC%EC%84%B1-3%EC%B0%A8/)