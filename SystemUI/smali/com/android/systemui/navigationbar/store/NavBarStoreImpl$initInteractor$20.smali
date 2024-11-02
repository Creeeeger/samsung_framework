.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$20;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$20;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$20;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$20;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$20;->INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$20;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    const-class p0, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->updateCurrentInteractionMode(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
