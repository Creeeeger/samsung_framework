.class public final Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;
.super Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mUserHandle:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final createPackageContextAsUser(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Context;
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;->mUserHandle:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;

    .line 13
    .line 14
    invoke-direct {v2, v3}, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;->mUserHandle:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;

    .line 18
    .line 19
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;->mUserHandle:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->createInstance([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-class v2, Ljava/lang/String;

    .line 34
    .line 35
    const-class v3, Landroid/os/UserHandle;

    .line 36
    .line 37
    filled-new-array {v2, v0, v3}, [Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    filled-new-array {p2, v2, v1}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string v1, "createPackageContextAsUser"

    .line 51
    .line 52
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    check-cast p0, Landroid/content/Context;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 p0, 0x0

    .line 62
    :goto_0
    return-object p0
.end method

.method public final getBaseClassName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.content.Context"

    .line 2
    .line 3
    return-object p0
.end method
