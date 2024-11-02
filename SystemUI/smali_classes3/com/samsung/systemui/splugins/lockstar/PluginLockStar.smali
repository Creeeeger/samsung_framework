.class public interface abstract Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_LOCK_STAR"
    version = 0x3ef
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$PluginLockStarCallback;,
        Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_LOCK_STAR"

.field public static final CLOCK_TYPE:Ljava/lang/String; = "Clock"

.field public static final COMPLICATION_WIDGET_TYPE:Ljava/lang/String; = "ComplicationWidget"

.field public static final MAIN_DISPLAY:I = 0x0

.field public static final MAJOR_VERSION:I = 0x1

.field public static final MINOR_VERSION:I = 0x7

.field public static final MUSIC_TYPE:Ljava/lang/String; = "Music"

.field public static final NOTIFICATION_TYPE:Ljava/lang/String; = "Notification"

.field public static final STICKER_TYPE:Ljava/lang/String; = "Sticker"

.field public static final SUB_DISPLAY:I = 0x1

.field public static final VERSION:I = 0x3ef

.field public static final WIDGET_TYPE:Ljava/lang/String; = "Widget"


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getAODData(Z)Landroid/os/Bundle;
.end method

.method public abstract getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getSupplier(Ljava/lang/String;)Ljava/util/function/Supplier;
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ea
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getVersion()I
    .locals 0

    .line 1
    const/16 p0, 0x3ef

    .line 2
    .line 3
    return p0
.end method

.method public abstract init(Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$PluginLockStarCallback;)V
.end method

.method public abstract isLockStarEnabled()Z
.end method

.method public abstract isPositionSynchronized(Ljava/lang/String;)Z
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ef
    .end annotation
.end method

.method public abstract isTouchable(Landroid/view/MotionEvent;)Z
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ec
    .end annotation
.end method

.method public onChangedDisplay(I)V
    .locals 0
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ed
    .end annotation

    .line 1
    return-void
.end method

.method public onChangedDisplaySize(II)V
    .locals 0
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ed
    .end annotation

    .line 1
    return-void
.end method

.method public onChangedItemSize(Ljava/lang/String;II)V
    .locals 0
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ed
    .end annotation

    .line 1
    return-void
.end method

.method public onChangedOrientation(Z)V
    .locals 0
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ed
    .end annotation

    .line 1
    return-void
.end method

.method public abstract onFinishedGoingToSleep()V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ef
    .end annotation
.end method

.method public abstract onFinishedWakingUp()V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ef
    .end annotation
.end method

.method public abstract onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ee
    .end annotation
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3eb
    .end annotation

    .line 1
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3eb
    .end annotation

    .line 1
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3eb
    .end annotation

    .line 1
    return-void
.end method

.method public abstract onStartedGoingToSleep()V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ef
    .end annotation
.end method

.method public abstract onStartedWakingUp()V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ef
    .end annotation
.end method

.method public abstract requestExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ef
    .end annotation
.end method

.method public abstract setDarkAmount(Ljava/lang/Float;)V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ef
    .end annotation
.end method
