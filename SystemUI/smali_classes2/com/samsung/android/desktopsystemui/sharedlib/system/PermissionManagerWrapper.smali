.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;


# instance fields
.field private final mPermissionManager:Landroid/permission/PermissionManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-class v1, Landroid/permission/PermissionManager;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/permission/PermissionManager;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 17
    .line 18
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public permGroupUsage(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/permission/PermissionManager;->getIndicatorAppOpUsageData(Z)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/permission/PermissionGroupUsage;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;-><init>(Landroid/permission/PermissionGroupUsage;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object p1
.end method
