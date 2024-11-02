.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$16$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$16$1;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$16$1;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$16$1;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 19
    .line 20
    new-instance v2, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;

    .line 21
    .line 22
    const-class v3, Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/content/Context;

    .line 29
    .line 30
    invoke-direct {v2, v3, v0}, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStateManager;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;

    .line 34
    .line 35
    invoke-direct {v0, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;-><init>(Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
