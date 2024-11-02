.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLockStarEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mLockStarEnabled:Z

    .line 4
    .line 5
    return-void
.end method

.method public final onViewModeChanged(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mViewMode:I

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "KeyguardTouchDymLockInjector"

    .line 18
    .line 19
    const-string/jumbo v2, "onViewModeChanged mViewMode[%d], newMode[%d]"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mViewMode:I

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mViewMode:I

    .line 29
    .line 30
    return-void
.end method
