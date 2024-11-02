.class public abstract Lcom/android/systemui/biometrics/domain/model/BiometricModalityKt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static final asBiometricModality(I)Lcom/android/systemui/biometrics/domain/model/BiometricModality;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/android/systemui/biometrics/domain/model/BiometricModality;->None:Lcom/android/systemui/biometrics/domain/model/BiometricModality;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p0, Lcom/android/systemui/biometrics/domain/model/BiometricModality;->Face:Lcom/android/systemui/biometrics/domain/model/BiometricModality;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    sget-object p0, Lcom/android/systemui/biometrics/domain/model/BiometricModality;->Fingerprint:Lcom/android/systemui/biometrics/domain/model/BiometricModality;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method
