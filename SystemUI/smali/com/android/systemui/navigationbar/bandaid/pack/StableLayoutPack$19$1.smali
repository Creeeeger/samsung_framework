.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;

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
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;

    .line 6
    .line 7
    iget v0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;->insetHeight:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static {v2, v2, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget v3, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;->insetWidth:I

    .line 20
    .line 21
    if-eq v3, v1, :cond_2

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isBottomGestureMode(Z)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget p1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;->rotation:I

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-ne p1, v1, :cond_1

    .line 35
    .line 36
    iget p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;->insetWidth:I

    .line 37
    .line 38
    invoke-static {v2, v2, p0, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v1, 0x3

    .line 44
    if-ne p1, v1, :cond_2

    .line 45
    .line 46
    iget p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;->insetWidth:I

    .line 47
    .line 48
    invoke-static {p0, v2, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_2
    :goto_1
    return-object v0
.end method
