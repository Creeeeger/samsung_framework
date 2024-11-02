.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDozeAmountChanged(FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 2
    .line 3
    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dozeAmount:F

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    cmpg-float p0, p1, p0

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const-string p0, "KeyguardTouchAnimator"

    .line 16
    .line 17
    const-string p1, "dozeAmount cleared"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
