.class public final Lcom/android/systemui/keyguard/KeyguardService$2$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mInvoked:Z

.field public final synthetic val$callback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

.field public final synthetic val$traceCookie:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardService$2;Lcom/android/internal/policy/IKeyguardDrawnCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardService$2$1;->val$callback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 2
    .line 3
    iput p3, p0, Lcom/android/systemui/keyguard/KeyguardService$2$1;->val$traceCookie:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$2$1;->val$callback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardService$2$1;->mInvoked:Z

    .line 7
    .line 8
    const-string v1, "KeyguardService"

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardService$2$1;->mInvoked:Z

    .line 14
    .line 15
    :try_start_0
    const-string v0, "Waiting for KeyguardDrawnCallback#onDrawn"

    .line 16
    .line 17
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardService$2$1;->val$traceCookie:I

    .line 18
    .line 19
    invoke-static {v0, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$2$1;->val$callback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 23
    .line 24
    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardDrawnCallback;->onDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    const-string v0, "Exception calling onDrawn():"

    .line 30
    .line 31
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    sget-object p0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-static {v1, p0, v0, v2}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string p0, "KeyguardDrawnCallback#onDrawn() invoked > 1 times"

    .line 42
    .line 43
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method
