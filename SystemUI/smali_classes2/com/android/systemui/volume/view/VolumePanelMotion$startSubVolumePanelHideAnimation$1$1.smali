.class public final Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelHideAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic $dismissRunnable:Ljava/lang/Runnable;

.field public final synthetic $hideBlurRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelHideAnimation$1$1;->$hideBlurRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelHideAnimation$1$1;->$dismissRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelHideAnimation$1$1;->$hideBlurRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion$startSubVolumePanelHideAnimation$1$1;->$dismissRunnable:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
