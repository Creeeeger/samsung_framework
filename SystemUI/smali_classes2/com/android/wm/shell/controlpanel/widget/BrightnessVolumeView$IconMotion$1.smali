.class public final Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$1;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$1;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion;->mIconRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$IconMotion$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const-wide/16 v0, 0xc8

    .line 8
    .line 9
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
