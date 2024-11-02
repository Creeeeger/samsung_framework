.class public final Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final isCallChipNotif:Z

.field public final key:Ljava/lang/String;

.field public final when:J


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;Ljava/lang/String;JZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->key:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->when:J

    .line 5
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->isCallChipNotif:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;Ljava/lang/String;JZI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;-><init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;Ljava/lang/String;JZ)V

    return-void
.end method
