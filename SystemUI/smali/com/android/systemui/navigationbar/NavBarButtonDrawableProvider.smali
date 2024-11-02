.class public final Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider$Companion;

.field public static volatile INSTANCE:Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->Companion:Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGestureHintDrawable(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconResource;I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;
    .locals 2

    .line 1
    sget-object p0, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;->Companion:Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable$Companion;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_4

    .line 11
    .line 12
    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eq p0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move p0, v1

    .line 27
    :goto_1
    if-eqz p0, :cond_3

    .line 28
    .line 29
    if-eq p3, v1, :cond_2

    .line 30
    .line 31
    const/4 p0, 0x3

    .line 32
    if-ne p3, p0, :cond_3

    .line 33
    .line 34
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0, v0, p3}, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable$Companion;->rotateDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0, p2, p3}, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable$Companion;->rotateDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    :cond_3
    new-instance p0, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    .line 51
    .line 52
    filled-new-array {v0, p2}, [Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    new-instance p0, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    .line 61
    .line 62
    filled-new-array {v0}, [Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 67
    .line 68
    .line 69
    :goto_2
    return-object p0
.end method
