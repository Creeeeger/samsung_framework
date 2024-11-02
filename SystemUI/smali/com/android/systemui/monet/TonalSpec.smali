.class public final Lcom/android/systemui/monet/TonalSpec;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final chroma:Lcom/android/systemui/monet/Chroma;

.field public final hue:Lcom/android/systemui/monet/Hue;


# direct methods
.method public constructor <init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/monet/TonalSpec;->hue:Lcom/android/systemui/monet/Hue;

    iput-object p2, p0, Lcom/android/systemui/monet/TonalSpec;->chroma:Lcom/android/systemui/monet/Chroma;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 2
    new-instance p1, Lcom/android/systemui/monet/HueSource;

    invoke-direct {p1}, Lcom/android/systemui/monet/HueSource;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    return-void
.end method
