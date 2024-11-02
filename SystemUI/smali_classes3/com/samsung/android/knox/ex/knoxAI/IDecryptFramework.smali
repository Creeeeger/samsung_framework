.class public interface abstract Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework$Stub;,
        Lcom/samsung/android/knox/ex/knoxAI/IDecryptFramework$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ex.knoxAI.IDecryptFramework"


# virtual methods
.method public abstract close(J)I
.end method

.method public abstract createKnoxAiSession(Lcom/samsung/android/knox/ex/knoxAI/IDeathNotifier;)J
.end method

.method public abstract destroyKnoxAiSession(J)I
.end method

.method public abstract execute(J[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;)I
.end method

.method public abstract getKeyProvisioning(Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback;)V
.end method

.method public abstract getModelInputShape(JI[I)I
.end method

.method public abstract open(JLcom/samsung/android/knox/ex/knoxAI/KfaOptions;)I
.end method
