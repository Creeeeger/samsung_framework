.class public final Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mIsRegistered:Z

.field public final receivers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;->mIsRegistered:Z

    .line 6
    .line 7
    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorIconBlacklistReceiver;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorIconBlacklistReceiver;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/android/systemui/slimindicator/SlimIndicatorPackageReceiver;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorPackageReceiver;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;->receivers:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
