.class public final Lcom/android/systemui/statusbar/phone/ScrimController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mLastCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field public final mLastState:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public final synthetic val$scrim:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->val$scrim:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->mLastState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->mLastCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "onAnimationEnd "

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->val$scrim:Landroid/view/View;

    .line 11
    .line 12
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    instance-of v2, v1, Lcom/android/systemui/scrim/ScrimView;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    check-cast v1, Lcom/android/systemui/scrim/ScrimView;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimName(Lcom/android/systemui/scrim/ScrimView;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    const-string v1, "ScrimController"

    .line 33
    .line 34
    invoke-static {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimColorState:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->logScrimColor(Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->val$scrim:Landroid/view/View;

    .line 48
    .line 49
    sget v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->mLastCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->mLastState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$4;->val$scrim:Landroid/view/View;

    .line 74
    .line 75
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 76
    .line 77
    if-ne p0, v0, :cond_3

    .line 78
    .line 79
    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 80
    .line 81
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 82
    .line 83
    if-ne p0, v1, :cond_2

    .line 84
    .line 85
    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 86
    .line 87
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->onAodTransitionEnd()V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 98
    .line 99
    if-ne p0, v1, :cond_3

    .line 100
    .line 101
    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mProvider:Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

    .line 102
    .line 103
    iget p1, v0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mDispatchBackScrimStateConsumer:Ljava/util/function/Consumer;

    .line 106
    .line 107
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_1
    return-void
.end method
