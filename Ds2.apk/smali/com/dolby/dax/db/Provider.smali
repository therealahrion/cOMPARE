.class public interface abstract Lcom/dolby/dax/db/Provider;
.super Ljava/lang/Object;
.source "Provider.java"


# virtual methods
.method public abstract beginTransaction()V
.end method

.method public abstract clear()V
.end method

.method public abstract commitTransaction()V
.end method

.method public abstract create(Lcom/dolby/dax/model/DeviceTuning;)V
.end method

.method public abstract create(Lcom/dolby/dax/model/GeqPreset;)V
.end method

.method public abstract create(Lcom/dolby/dax/model/IeqPreset;)V
.end method

.method public abstract create(Lcom/dolby/dax/model/Profile;)V
.end method

.method public abstract create(Lcom/dolby/dax/model/ProfileEndpoint;)V
.end method

.method public abstract create(Lcom/dolby/dax/model/ProfilePort;)V
.end method

.method public abstract create(Lcom/dolby/dax/model/Tuning;)V
.end method

.method public abstract getDefaultXmlSignature()Ljava/lang/String;
.end method

.method public abstract getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract getSelectedProfile()Lcom/dolby/dax/model/ProfileType;
.end method

.method public abstract isDapOn()Z
.end method

.method public abstract loadDefaultGeqPresets(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/model/ProfileType;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dolby/dax/model/GeqPreset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadDefaultProfile(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;
.end method

.method public abstract loadDefaultProfileEndpoints(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/model/ProfileType;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dolby/dax/model/ProfileEndpoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadDefaultProfilePorts(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/model/ProfileType;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dolby/dax/model/ProfilePort;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadGeqPresets(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/model/ProfileType;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dolby/dax/model/GeqPreset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadIeqPreset(Lcom/dolby/dax/model/PresetType;)Lcom/dolby/dax/model/IeqPreset;
.end method

.method public abstract loadProfile(Lcom/dolby/dax/model/ProfileType;)Lcom/dolby/dax/model/Profile;
.end method

.method public abstract loadProfileEndpoints(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/model/ProfileType;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dolby/dax/model/ProfileEndpoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadProfilePorts(Lcom/dolby/dax/model/ProfileType;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolby/dax/model/ProfileType;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dolby/dax/model/ProfilePort;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadTuningForDevice(Ljava/lang/String;)Lcom/dolby/dax/model/Tuning;
.end method

.method public abstract reset(Lcom/dolby/dax/model/GeqPreset;)Lcom/dolby/dax/model/GeqPreset;
.end method

.method public abstract reset(Lcom/dolby/dax/model/Profile;)Lcom/dolby/dax/model/Profile;
.end method

.method public abstract reset(Lcom/dolby/dax/model/ProfileEndpoint;)Lcom/dolby/dax/model/ProfileEndpoint;
.end method

.method public abstract reset(Lcom/dolby/dax/model/ProfilePort;)Lcom/dolby/dax/model/ProfilePort;
.end method

.method public abstract save(Lcom/dolby/dax/model/GeqPreset;)V
.end method

.method public abstract save(Lcom/dolby/dax/model/Profile;)V
.end method

.method public abstract save(Lcom/dolby/dax/model/ProfileEndpoint;)V
.end method

.method public abstract save(Lcom/dolby/dax/model/ProfilePort;)V
.end method

.method public abstract setDapOn(Z)V
.end method

.method public abstract setDefaultXmlSignature(Ljava/lang/String;)V
.end method

.method public abstract setSelectedProfile(Lcom/dolby/dax/model/ProfileType;)V
.end method
