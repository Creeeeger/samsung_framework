.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;->this$1:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;->this$1:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "high_brightness_mode_pms_enter"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, -0x2

    .line 15
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    const-string v1, "UPDATE_HIGH_BRIGHTNESS_MODE = "

    .line 25
    .line 26
    const-string v3, "SubscreenBrightnessController"

    .line 27
    .line 28
    invoke-static {v1, v0, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sput-boolean v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mIsHighBrightnessMode:Z

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;->this$1:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mHandler:Lcom/android/systemui/qp/SubscreenBrightnessController$3;

    .line 38
    .line 39
    const/16 v1, 0xa

    .line 40
    .line 41
    invoke-virtual {p0, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
