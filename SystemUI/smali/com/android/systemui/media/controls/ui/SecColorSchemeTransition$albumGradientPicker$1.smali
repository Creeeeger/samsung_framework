.class final Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $inner:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $targetAlpha:F

.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;Lkotlin/jvm/functions/Function1;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;",
            "Lkotlin/jvm/functions/Function1;",
            "F)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;->$inner:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;->$targetAlpha:F

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/monet/ColorScheme;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->isGradientEnabled:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;->$inner:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [F

    .line 23
    .line 24
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    aget v2, v0, v1

    .line 29
    .line 30
    const v3, 0x3e4ccccd    # 0.2f

    .line 31
    .line 32
    .line 33
    cmpg-float v2, v2, v3

    .line 34
    .line 35
    if-gtz v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    aput v3, v0, v1

    .line 39
    .line 40
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    :goto_0
    iget p0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$albumGradientPicker$1;->$targetAlpha:F

    .line 45
    .line 46
    invoke-static {p0, p1}, Lcom/android/systemui/util/ColorUtilKt;->getColorWithAlpha(FI)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 p0, 0x0

    .line 52
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
