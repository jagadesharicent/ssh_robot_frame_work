#import ssh
import paramiko
import sys
sys.path.append("/home/master/robot_framework")
def connect_machine(remote_machine_ip):
    ssh = paramiko.SSHClient()
    ssh.load_system_host_keys()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh.connect(remote_machine_ip, username="ansible")
    ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command("hostname")
    print("Display Info")
    print(ssh_stdout.read())
    exit_status = ssh_stdout.channel.recv_exit_status()
