.class public interface abstract Lcom/samsung/systemui/splugins/SPluginInitializer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# virtual methods
.method public abstract getAllowedPlugins(Landroid/content/Context;)[Ljava/lang/String;
.end method

.method public abstract getBgLooper()Landroid/os/Looper;
.end method

.method public abstract getPluginEnabler(Landroid/content/Context;)Lcom/samsung/systemui/splugins/SPluginEnabler;
.end method

.method public abstract handleWtfs()V
.end method

.method public abstract onPluginManagerInit()V
.end method
