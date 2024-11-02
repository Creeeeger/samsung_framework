.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;

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
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetBarLayoutParams;

    .line 6
    .line 7
    new-instance v6, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;

    .line 8
    .line 9
    iget v0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetBarLayoutParams;->rotation:I

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    .line 14
    .line 15
    iget-object v2, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 16
    .line 17
    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 18
    .line 19
    invoke-interface {v1, v2, v0}, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;->getBarWidth(ZI)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    .line 24
    .line 25
    iget-object v2, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 26
    .line 27
    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 28
    .line 29
    iget p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetBarLayoutParams;->rotation:I

    .line 30
    .line 31
    invoke-interface {v0, v2, p0}, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;->getBarHeight(ZI)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->shouldShowSUWStyle()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const v3, 0x1050255

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    .line 56
    .line 57
    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 58
    .line 59
    iget-boolean v3, v3, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 60
    .line 61
    invoke-interface {v0, v3, p0}, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;->getBarInsetHeight(ZI)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    :goto_0
    move v3, v0

    .line 66
    iget-object v0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    .line 67
    .line 68
    iget-object v4, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 69
    .line 70
    iget-boolean v4, v4, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 71
    .line 72
    invoke-interface {v0, v4, p0}, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;->getBarInsetWidth(ZI)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    iget-object v0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 79
    .line 80
    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 81
    .line 82
    invoke-interface {v0, p1, p0}, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;->getBarGravity(ZI)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    move-object v0, v6

    .line 87
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;-><init>(IIIII)V

    .line 88
    .line 89
    .line 90
    return-object v6
.end method
