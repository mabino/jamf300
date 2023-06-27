
    #!/bin/bash
    # Return Time Since Last Boot
    bootTime=$(sysctl kern.boottime | awk '{print $5 }' | tr -d ',')
    
    date -jf %s $bootTime +%F\ %T
