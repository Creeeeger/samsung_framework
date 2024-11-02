.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainerController$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x1388

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
