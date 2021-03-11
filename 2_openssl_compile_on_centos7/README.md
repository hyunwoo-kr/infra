
# CentOS 7에 openssl 1.1.1 컴파일 설치

[설명]
Apache, Nginx와 같은 웹서버에서 TLS 1.3 프로토콜을 사용하기 위해서 반드시 openssl 업그레이드 필요하며, CentOS 7에서는 openssl 1.1.1g를 컴파일 설치해야 사용 가능 함


[목표]
- Hyper-V에 설치된 CentOS 7에
- openssl 1.1.1g 컴파일 설치하기

[사전준비]
- [Windows10 Hyper-V Nat Network 구성하기](../0_common/README.md)
- [Vagrant를 사용한 CentOS 7 Install on Hyper-V](../1_vagrant_centos7_base/README.md)


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

### Step4. 만들어 진 box를 이후 테스트를 위해 export/add 해 놓자

> openssl 이 설치된 box를 export 하기
```
vagrant package --output CentOS-7-x86_64-Vagrant-openssl.HyperV.box
```

> box add 하기

```
vagrant box add centos_openssl/7 ./CentOS-7-x86_64-Vagrant-openssl.HyperV.box
```
## Manual 설치
[Apache HTTPD 테스트용 Centos7 구성 - 2차](https://hyunwoo-kr.github.io/2021/03/apache-httpd-%ED%85%8C%EC%8A%A4%ED%8A%B8%EC%9A%A9-centos7-%EA%B5%AC%EC%84%B1-2%EC%B0%A8/)