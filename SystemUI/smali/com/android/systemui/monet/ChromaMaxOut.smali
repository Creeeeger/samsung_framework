.class public final Lcom/android/systemui/monet/ChromaMaxOut;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/monet/Chroma;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 2

    .line 1
    sget-object p0, Lcom/android/systemui/monet/Chroma;->Companion:Lcom/android/systemui/monet/Chroma$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-wide p0, Lcom/android/systemui/monet/Chroma$Companion;->MAX_VALUE:D

    .line 7
    .line 8
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 9
    .line 10
    add-double/2addr p0, v0

    .line 11
    return-wide p0
.end method
