.class public interface abstract Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_MULTISTAR"
    version = 0x1b58
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_MULTISTAR"

.field public static final VERSION:I = 0x1b58


# virtual methods
.method public abstract getDockedStackListener()Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;
.end method

.method public abstract init(Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;)V
.end method

.method public abstract onLongPressRecents()Z
.end method
