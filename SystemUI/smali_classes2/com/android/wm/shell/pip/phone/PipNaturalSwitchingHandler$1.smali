.class public final Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

.field public final synthetic val$downHashCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$1;->this$0:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$1;->val$downHashCode:Ljava/lang/String;

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
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "startEnterAnimation: down-scale finished, "

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$1;->val$downHashCode:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "PipNaturalSwitchingHandler"

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$1;->this$0:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
