.class public final Lcom/android/systemui/monet/HueAdd;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/monet/Hue;


# instance fields
.field public final amountDegrees:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/systemui/monet/HueAdd;->amountDegrees:D

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/monet/ColorScheme;->Companion:Lcom/android/systemui/monet/ColorScheme$Companion;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    float-to-double v1, p1

    .line 8
    iget-wide p0, p0, Lcom/android/systemui/monet/HueAdd;->amountDegrees:D

    .line 9
    .line 10
    add-double/2addr v1, p0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/android/systemui/monet/ColorScheme$Companion;->wrapDegreesDouble(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    return-wide p0
.end method
