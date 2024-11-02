.class public final Lcom/android/systemui/qs/InjectionInflationController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mFactory:Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;

.field public final mInjectionMap:Landroid/util/ArrayMap;

.field public final mViewInstanceCreatorFactory:Lcom/android/systemui/qs/InjectionInflationController$ViewInstanceCreator$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/InjectionInflationController$ViewInstanceCreator$Factory;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/qs/InjectionInflationController;->mInjectionMap:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;-><init>(Lcom/android/systemui/qs/InjectionInflationController;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/qs/InjectionInflationController;->mFactory:Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/qs/InjectionInflationController;->mViewInstanceCreatorFactory:Lcom/android/systemui/qs/InjectionInflationController$ViewInstanceCreator$Factory;

    .line 20
    .line 21
    const-class p1, Lcom/android/systemui/qs/InjectionInflationController$ViewInstanceCreator;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    array-length v0, p1

    .line 28
    :goto_0
    if-ge v1, v0, :cond_1

    .line 29
    .line 30
    aget-object v2, p1, v1

    .line 31
    .line 32
    const-class v3, Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    and-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v4, p0, Lcom/android/systemui/qs/InjectionInflationController;->mInjectionMap:Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method
