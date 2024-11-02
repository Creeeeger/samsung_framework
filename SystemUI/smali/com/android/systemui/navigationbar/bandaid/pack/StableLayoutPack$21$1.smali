.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$21$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$21$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$21$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$21$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$21$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$21$1;

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
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetImeInsets;

    .line 6
    .line 7
    iget v0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetImeInsets;->rotation:I

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->canShowKeyboardButtonForRotation(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_4

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetImeInsets;->canMove:Z

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetImeInsets;->insetHeight:I

    .line 23
    .line 24
    invoke-static {v0, v0, v0, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget p1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetImeInsets;->rotation:I

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    if-eq p1, v1, :cond_3

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    if-eq p1, v1, :cond_2

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    if-eq p1, v1, :cond_3

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    if-eq p1, v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetImeInsets;->insetWidth:I

    .line 47
    .line 48
    invoke-static {p0, v0, v0, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetImeInsets;->insetWidth:I

    .line 54
    .line 55
    invoke-static {v0, v0, p0, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetImeInsets;->insetHeight:I

    .line 61
    .line 62
    invoke-static {v0, v0, v0, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 68
    :goto_1
    return-object p0
.end method
