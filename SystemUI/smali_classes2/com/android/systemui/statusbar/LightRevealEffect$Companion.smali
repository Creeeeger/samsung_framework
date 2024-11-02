.class public final Lcom/android/systemui/statusbar/LightRevealEffect$Companion;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;->$$INSTANCE:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPercentPastThreshold(FF)F
    .locals 2

    .line 1
    sub-float/2addr p0, p1

    .line 2
    const/4 v0, 0x0

    .line 3
    cmpg-float v1, p0, v0

    .line 4
    .line 5
    if-gez v1, :cond_0

    .line 6
    .line 7
    move p0, v0

    .line 8
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    sub-float p1, v0, p1

    .line 11
    .line 12
    div-float/2addr v0, p1

    .line 13
    mul-float/2addr v0, p0

    .line 14
    return v0
.end method
