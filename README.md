**jvmtop** (originally from https://github.com/patric-r/jvmtop) is a lightweight console application to monitor all accessible, running jvms on a machine.
In a top-like manner, it displays [JVM internal metrics](https://github.com/wongsamuel/jvmtop/blob/master/doc/ExampleOutput.md) (e.g. memory information) of running java processes.

Jvmtop does also include a [CPU console profiler](https://github.com/wongsamuel/jvmtop/blob/master/doc/ConsoleProfiler.md).

It's currently only have been tested with OpenJDK 17 on both Linux and MacOS.
Jvmtop requires Java 17 or higher.

Jvmtop is open-source. Checkout the [source code](https://github.com/wongsamuel/jvmtop).

Also have a look at the [documentation](https://github.com/wongsamuel/jvmtop/blob/master/doc/Documentation.md) or at a [captured live-example](https://github.com/wongsamuel/jvmtop/blob/master/doc/ExampleOutput.md).

```
 JvmTop 0.9.0 - java9+ - 12:34:56,  amd64,  4 cpus, Linux 2.6.18-34
 https://github.com/wongsamuel/jvmtop (forked from patric-r/jvmtop)

  PID MAIN-CLASS      HPCUR HPMAX NHCUR NHMAX    CPU     GC    VM USERNAME   #T DL
 3370 rapperSimpleApp  165m  455m  109m  176m  0.12%  0.00% S6U37 web        21
11272 ver.resin.Resin [ERROR: Could not attach to VM]
27338 WatchdogManager   11m   28m   23m  130m  0.00%  0.00% S6U37 web        31
19187 m.jvmtop.JvmTop   20m 3544m   13m  130m  0.93%  0.47% S6U37 web        20
16733 artup.Bootstrap  159m  455m  166m  304m  0.12%  0.00% S6U37 web        46
```
---

## Installation
Click on the [releases tab](https://github.com/wongsamuel/jvmtop/releases), download the
most recent tar.gz archive. Extract it, ensure that the `JAVA_HOME` environment variable points to a valid JDK and run `./jvmtop.sh`.

Further information can be found in the [INSTALL file](https://github.com/wongsamuel/jvmtop/blob/master/INSTALL)



## 05/01/2026 jvmtop 0.9.0 Java 9+ released
### Changes:
- New fork
- Support OpenJDK 17


[Full changelog](https://github.com/wongsmauel/jvmtop/blob/master/doc/Changelog.md)

---
In [VM detail mode](https://github.com/wongsamuel/jvmtop/blob/master/doc/ExampleOutput.md) it shows you the top CPU-consuming threads, beside detailed metrics:


```
 JvmTop 0.9.0 - java9+ - 12:34:56,  amd64,  4 cpus, Linux 2.6.18-34
 https://github.com/wongsamuel/jvmtop (forked from patric-r/jvmtop)

 PID 3539: org.apache.catalina.startup.Bootstrap
 ARGS: start
 VMARGS: -Djava.util.logging.config.file=/home/webserver/apache-tomcat-5.5[...]
 VM: Sun Microsystems Inc. Java HotSpot(TM) 64-Bit Server VM 1.6.0_25
 UP: 869:33m #THR: 106  #THRPEAK: 143  #THRCREATED: 128020 USER: webserver
 CPU:  4.55% GC:  3.25% HEAP: 137m / 227m NONHEAP:  75m / 304m
  TID   NAME                                    STATE    CPU  TOTALCPU BLOCKEDBY
     25 http-8080-Processor13                RUNNABLE  4.55%     1.60%
 128022 RMI TCP Connection(18)-10.101.       RUNNABLE  1.82%     0.02%
  36578 http-8080-Processor164               RUNNABLE  0.91%     2.35%
  36453 http-8080-Processor94                RUNNABLE  0.91%     1.52%
     27 http-8080-Processor15                RUNNABLE  0.91%     1.81%
     14 http-8080-Processor2                 RUNNABLE  0.91%     3.17%
 128026 JMX server connection timeout   TIMED_WAITING  0.00%     0.00%
```

<a href=''>[Pull requests / bug reports](https://github.com/wongsamuel/jvmtop/issues)</a> 

