.class public final Lcom/samsung/android/knox/restriction/SPDControlPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final SPD_ENFORCE_NONE:I = 0x0

.field public static final SPD_ENFORCE_OFF:I = 0x2

.field public static final SPD_ENFORCE_ON:I = 0x1

.field public static final SPD_FAILED:I = -0x1

.field public static final SPD_OFF:I = 0x4

.field public static final SPD_ON:I = 0x3

.field public static TAG:Ljava/lang/String; = "SPDControlPolicy"


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getAutoSecurityPolicyUpdateMode()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final setAutoSecurityPolicyUpdateMode(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
