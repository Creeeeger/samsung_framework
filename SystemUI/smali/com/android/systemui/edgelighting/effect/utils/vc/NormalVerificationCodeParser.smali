.class public final Lcom/android/systemui/edgelighting/effect/utils/vc/NormalVerificationCodeParser;
.super Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/NormalVerificationCodeParser;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getVerificationCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Normal/VerificationCodeParser"

    .line 2
    .line 3
    const-string v1, "getVerificationCode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v1, v0, [Ljava/lang/String;

    .line 10
    .line 11
    new-array v0, v0, [Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/NormalVerificationCodeParser;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p0, p1, v1, v0}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;->getVerificationCode(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
