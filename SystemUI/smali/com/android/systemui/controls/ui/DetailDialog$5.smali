.class public final Lcom/android/systemui/controls/ui/DetailDialog$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/DetailDialog$5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/controls/ui/DetailDialog$5;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/controls/ui/DetailDialog$5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/controls/ui/DetailDialog$5;->INSTANCE:Lcom/android/systemui/controls/ui/DetailDialog$5;

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
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 1
    sget-boolean p0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    or-int/2addr p0, v0

    .line 14
    invoke-virtual {p2, p0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget p2, p0, Landroid/graphics/Insets;->left:I

    .line 19
    .line 20
    iget v0, p0, Landroid/graphics/Insets;->top:I

    .line 21
    .line 22
    iget v1, p0, Landroid/graphics/Insets;->right:I

    .line 23
    .line 24
    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    .line 25
    .line 26
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p2, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iget v1, p2, Landroid/graphics/Insets;->top:I

    .line 47
    .line 48
    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    .line 49
    .line 50
    invoke-virtual {p1, p0, v1, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 51
    .line 52
    .line 53
    :goto_0
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    .line 54
    .line 55
    return-object p0
.end method
