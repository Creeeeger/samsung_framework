.class public final Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil$getDisplayCutoutAreaToExclude$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil$getDisplayCutoutAreaToExclude$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil$getDisplayCutoutAreaToExclude$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil$getDisplayCutoutAreaToExclude$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil$getDisplayCutoutAreaToExclude$1;->INSTANCE:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil$getDisplayCutoutAreaToExclude$1;

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
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method
