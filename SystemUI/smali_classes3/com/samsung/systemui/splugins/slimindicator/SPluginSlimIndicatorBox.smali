.class public interface abstract Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR"
    version = 0x1b5d
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR"

.field public static final BLACK_LIST_DB:Ljava/lang/String; = ""

.field public static final MAJOR_VERSION:I = 0x7

.field public static final MINOR_VERSION:I = 0x5

.field public static final VERSION:I = 0x1b5d

.field public static final mModel:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorModel;


# virtual methods
.method public abstract getBlackListDB()Ljava/lang/String;
.end method

.method public abstract getBoxCallback()Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBoxCallback;
.end method

.method public abstract getModel()Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorModel;
.end method

.method public abstract onPluginConfigurationChanged()V
.end method

.method public abstract onPluginConnected()V
.end method

.method public abstract onPluginDisconnected()V
.end method
