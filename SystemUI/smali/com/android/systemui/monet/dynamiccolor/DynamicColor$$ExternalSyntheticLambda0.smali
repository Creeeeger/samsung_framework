.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/monet/scheme/DynamicScheme;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/monet/scheme/DynamicScheme;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 8
    .line 9
    check-cast p1, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->toneMinContrast:Ljava/util/function/Function;

    .line 12
    .line 13
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/Double;

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 21
    .line 22
    check-cast p1, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->getTone(Lcom/android/systemui/monet/scheme/DynamicScheme;)D

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 34
    .line 35
    check-cast p1, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->toneMaxContrast:Ljava/util/function/Function;

    .line 38
    .line 39
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/Double;

    .line 44
    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
