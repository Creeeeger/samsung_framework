.class public abstract Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkConstrainedState()Z
.end method

.method public abstract cleanUpConstrainedState(I)V
.end method

.method public abstract disableConstrainedState(I)Z
.end method

.method public abstract enableConstrainedState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract getConstrainedState()I
.end method

.method public abstract isRestrictedByConstrainedState(I)Z
.end method
