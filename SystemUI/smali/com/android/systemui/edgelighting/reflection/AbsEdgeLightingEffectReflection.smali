.class public final Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;
.super Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mClassLoader:Ljava/lang/ClassLoader;

.field public final mInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;-><init>(Ljava/lang/Class;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mClassLoader:Ljava/lang/ClassLoader;

    .line 5
    .line 6
    const-class p1, Landroid/content/Context;

    .line 7
    .line 8
    const-class p4, Landroid/content/Context;

    .line 9
    .line 10
    filled-new-array {p1, p4}, [Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->createInstance([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final getBaseClassName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect"

    .line 2
    .line 3
    return-object p0
.end method
