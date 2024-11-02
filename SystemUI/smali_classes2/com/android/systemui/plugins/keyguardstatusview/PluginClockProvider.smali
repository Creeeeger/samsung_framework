.class public interface abstract Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/SupportVersionChecker;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;
    }
.end annotation


# virtual methods
.method public abstract forceRefresh(Landroid/view/View;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f4
    .end annotation
.end method

.method public abstract getClockDateColor()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7db
    .end annotation
.end method

.method public abstract getClockFontPath()Ljava/lang/String;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x414
    .end annotation
.end method

.method public abstract getClockFontType()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x414
    .end annotation
.end method

.method public abstract getClockGravity()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        defInt = -0x1
        version = 0x7d4
    .end annotation
.end method

.method public abstract getClockGroup(I)I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        defInt = 0x2
        version = 0x3f0
    .end annotation
.end method

.method public abstract getClockScale()F
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        defFloat = 1.0f
        version = 0x40e
    .end annotation
.end method

.method public abstract getClockScalePivot(I)I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        defInt = 0x1010
        version = 0x40e
    .end annotation
.end method

.method public abstract getClockView(I)Landroid/view/View;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3ea
    .end annotation
.end method

.method public abstract getClockVisibility()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x414
    .end annotation
.end method

.method public abstract getConsideredClockType()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x412
    .end annotation
.end method

.method public abstract getConsideredThemeClockType()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x409
    .end annotation
.end method

.method public abstract getDefaultClockType()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        defInt = 0x2
        version = 0x3ea
    .end annotation
.end method

.method public abstract getKeyguardClockHorizontalPadding()Landroid/util/Pair;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLockClockType()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        defInt = 0x2
        version = 0x3ea
    .end annotation
.end method

.method public abstract isStartAlignClock(I)Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3ea
    .end annotation
.end method

.method public abstract registerClockChangedCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3ea
    .end annotation
.end method

.method public abstract setAdaptiveColors(Landroid/view/View;[I)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f4
    .end annotation
.end method

.method public abstract setClockType(I)Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f0
    .end annotation
.end method

.method public abstract setColorThemeAdaptiveColor(Landroid/view/View;IZ)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x407
    .end annotation
.end method

.method public abstract setFontColorType(Landroid/view/View;I)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x407
    .end annotation
.end method

.method public abstract setPreDefineOrCustomColor(Landroid/view/View;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f0
    .end annotation
.end method

.method public abstract unregisterClockChangedCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3ea
    .end annotation
.end method
