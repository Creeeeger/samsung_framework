.class public final Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/store/SystemBarProxy;


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;

.field public static volatile INSTANCE:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;


# instance fields
.field public navbarTransitionMode:I

.field public final rotationLockCallback:Ljava/util/List;

.field public rotationLocked:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/systemui/navigationbar/store/SystemBarProxy;->Companion:Lcom/android/systemui/navigationbar/store/SystemBarProxy$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->rotationLockCallback:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method
