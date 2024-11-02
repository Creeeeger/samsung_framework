.class public interface abstract Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/SupportVersionChecker;
.end annotation


# virtual methods
.method public abstract getClockSidePadding()I
.end method

.method public abstract getClockSidePadding(Z)I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3ff
    .end annotation
.end method

.method public abstract getShortCutSidePadding()I
.end method

.method public abstract getShortCutSidePadding(Z)I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3fe
    .end annotation
.end method

.method public abstract getSidePaddingWhenIndisplayFP()I
.end method

.method public abstract getTabletClockSidePadding(IIZ)I
.end method

.method public abstract needToSidePaddingForClock()Z
.end method
