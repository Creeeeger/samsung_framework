.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCr:Landroid/content/ContentResolver;

.field public final mHighBrightnessModeEnterRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;

.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;

    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;-><init>(Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mHighBrightnessModeEnterRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mCr:Landroid/content/ContentResolver;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const-string p1, "SubscreenBrightnessController"

    .line 13
    .line 14
    const-string p2, "BrightnessObserver.onChange() : HIGH_BRIGHTNESS_MODE_ENTER_URI"

    .line 15
    .line 16
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mHighBrightnessModeEnterRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$2;

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method
