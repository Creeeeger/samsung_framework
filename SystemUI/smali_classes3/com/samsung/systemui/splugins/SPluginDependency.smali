.class public Lcom/samsung/systemui/splugins/SPluginDependency;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/SPluginDependency$DependencyProvider;
    }
.end annotation


# static fields
.field public static final VERSION:I = 0x1

.field static sProvider:Lcom/samsung/systemui/splugins/SPluginDependency$DependencyProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/SPluginDependency;->sProvider:Lcom/samsung/systemui/splugins/SPluginDependency$DependencyProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/samsung/systemui/splugins/SPluginDependency$DependencyProvider;->get(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
