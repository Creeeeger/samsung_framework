.class public final Lcom/android/systemui/util/ShadowDelegateUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/util/ShadowDelegateUtil;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/util/ShadowDelegateUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/util/ShadowDelegateUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/util/ShadowDelegateUtil;->INSTANCE:Lcom/android/systemui/util/ShadowDelegateUtil;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createShadowDrawable(Landroid/graphics/drawable/Drawable;FFI)Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {v1, p1, v0, v0, p2}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    .line 10
    .line 11
    invoke-direct {v2, p1, v0, v0, v0}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v0, v6

    .line 16
    move-object v3, p0

    .line 17
    move v4, p3

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;-><init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/graphics/drawable/Drawable;II)V

    .line 19
    .line 20
    .line 21
    return-object v6
.end method
