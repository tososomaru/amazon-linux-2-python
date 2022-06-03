# amazon-linux-2



## How to open port in EC2

1. Select instance
2. Open security groups 
3. Select group 
4. Add rule with params *Type* - Custom TCP rule, *Port range* - ${port}, *Source* - 0.0.0.0/0

Connect to the instance

```bash
sudo ufw enable
sudo ufw allow ${port}/tcp
```

You can also [add](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) Elastic IPs to the instance
