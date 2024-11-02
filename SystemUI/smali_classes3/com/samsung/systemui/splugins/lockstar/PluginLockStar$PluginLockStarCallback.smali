.class public interface abstract Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$PluginLockStarCallback;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PluginLockStarCallback"
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getVersion()I
    .locals 0

    .line 1
    const/16 p0, 0x3ef

    .line 2
    .line 3
    return p0
.end method

.method public abstract onChangedLockStarEnabled(Z)V
.end method

.method public abstract onUpdateModifiers(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "*>;>;)V"
        }
    .end annotation
.end method
