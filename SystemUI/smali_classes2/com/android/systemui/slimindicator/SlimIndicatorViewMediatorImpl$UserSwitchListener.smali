.class public final Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)V

    return-void
.end method


# virtual methods
.method public final onUserSwitchComplete(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->postUpdateAll(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
