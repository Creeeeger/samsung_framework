.class public final Lcom/android/systemui/statusbar/phone/LetterboxAppearance;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final appearance:I

.field public final appearanceRegions:[Lcom/android/internal/view/AppearanceRegion;


# direct methods
.method public constructor <init>(I[Lcom/android/internal/view/AppearanceRegion;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;->appearance:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;->appearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Landroid/view/InsetsFlags;

    .line 2
    .line 3
    const-string v1, "appearance"

    .line 4
    .line 5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;->appearance:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;->appearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 12
    .line 13
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "LetterboxAppearance{"

    .line 18
    .line 19
    const-string v2, ", "

    .line 20
    .line 21
    const-string/jumbo v3, "}"

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0, v2, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
