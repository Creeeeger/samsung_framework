.class public final Lcom/android/systemui/biometrics/dagger/BiometricsModule_Companion_ProvidesUdfpsUtilsFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static providesUdfpsUtils()Lcom/android/settingslib/udfps/UdfpsUtils;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/biometrics/dagger/BiometricsModule;->Companion:Lcom/android/systemui/biometrics/dagger/BiometricsModule$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/settingslib/udfps/UdfpsUtils;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/android/settingslib/udfps/UdfpsUtils;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/systemui/biometrics/dagger/BiometricsModule_Companion_ProvidesUdfpsUtilsFactory;->providesUdfpsUtils()Lcom/android/settingslib/udfps/UdfpsUtils;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
