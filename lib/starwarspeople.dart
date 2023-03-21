import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/character.dart' as chr;
import 'package:cached_network_image/cached_network_image.dart';

class StarwarsPeoplePage extends StatelessWidget {
  const StarwarsPeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chr.starwarspeople.starwaspeople.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CachedNetworkImage(
                        imageUrl:
                            "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFBcUFRUYGBcZGyEcGRoaGyAhGRwiGyAcIB0jIxwjIC4jGyMrJR0dJTUkKC0vMjIyGiU4PTgxPCwxMi8BCwsLDw4PHRERHDooIygxMTExMzMxMTExMToxMTExMTMxMTExMTExMTExMTExMTExMTExMTMxMTExMTExMTExMf/AABEIAKgBKwMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAEBQIDBgABB//EAD4QAAIBAgQEBAMHAwMEAQUAAAECEQMhAAQSMQUiQVETYXGBMpGhBiNCscHR8FJi4RSC8TNykrKiFUNTwtL/xAAZAQADAQEBAAAAAAAAAAAAAAAAAQIDBAX/xAArEQACAwACAgEDAgYDAAAAAAAAAQIRIRIxA0FRImGhgfAEEzJxweEzQpH/2gAMAwEAAhEDEQA/AFPBhNOmRU+FgCmq8Fj0na8+c4ozhVKuYHMCSvJYyhWSZm0WjyOFyrFHVADK1m2JmZWPxd/KPPA9R9TieoHtYD19sebDxtScjSUsoMzTqWnUxt8IIMR5na5PzxKhlmNNnSlUgmJ0kodgQYG8wRHbEkdaaUqg+IE3IGnfvF99zt0GOfi9Q8qklGbVoBIkza4vv2jGl0uzNlEvTIqUyyzIYTBgi6mOhEi+DlyoqoCWUEqiggNChdQ5p6ww9YOKHKkWRQS0Fb77sRBvbct36xi//Uk+GKVHTrgcocl9FpUEmN73gYUtKjRRnmpq5pUSWpLB1sBqaQD09T62xZwskuqkHlD/AA2EGNRYgiOUHvNrHEKeVapUq+GpMGfQCNz09+2GRzShUWn8b1KYZFgQqXNlkgTcvIMxaBGBtdDkvZEZqkh00y+n8R1EASAQwJbUDPYDzJJBwLxOo9Rish5STICkRqJaIBkAE3ved5wRUAWortT8PfRpDFXuRc1CZAI6dQY2x2WoVqZ8Y6mL02CvblMgzINuWYHr2xLdPWSJsrmNCjcaoBYAEgdf027YbZtqbGz6hUpAWX4nAHzNoMwbi07KcrQLpy6iwBIAHYT+gHvhrToFtUjwzJkR1U2ZRPK0T0jvbDlxvRaQSlVdlpn4iLuQFUgQRqcwI6bm/rgfLZQEuh1CPg6gnVEW8+2Lq1ZVphamrSTIKourpbmO1rgHr1the+YXTy6ltqiwEk9ADbCSzBhJAVgalMT/AEyYm4Flv0Bi3qJxYjlZpwAFnTeJPUhgfoD8+olOqgQzOsTZhb/u/wAeQx6qKwLGdUSP6BYiDfuNh364a6oMD8rzKSANbElSTuI2ubHt1vi+vw7lSogfSRCiw01PwkTYiReDingKAOCxYrMhV5dRuBJH4fLDzjHGQAtNo0qyMiiwgfkLfli4+NvsdZpWvDa9VUDELUEgryqsW/3Ene4674i2RemwSoUv/dEydpP+d8NuHZhaheoY8Vxq7tpNlMHYf0g773xhuIZmoXKuxlSR/cb98aPxKQUkPK9VdTEAg/DCmw/XbEaAdigYszkcoiZG8C+L/s9Wp1RpqUwXWIZmaI/uuPn548zaEMyLyonxaeknbeT9RjBwUH9QMJzFOnTAZmLMtyqEGD2n4b+WqOoxTls8QKhQHRtLBS+kEEXOwJMELE4sek9IL4hAmdIO4BvMHafzBwLnKLlV0wW5iAPiXyJ2M7x2OJkmq0kztZAtQxcB3AvIjVa/pjSUaFWvTTaJYKrKSqqd2JB+I+fQQNzOWzE6oIIOtiQR6HY42aZtadNQrc1iSs80fhBF++F5HiY80W/6hQ2yuQIiAEU6o5F27SW8j1Me05rVBqYjmC6pmRIkgdO89sUZ6spqs1PlWoNL2ECymwIttHni0utPlpw2v42UGYOyKbESdyInbER65e/uGFX2j1ArrUVADAqCxE7cwkH0OL8vlZp0iumXgX3B+EmOovvgniOTptl2qVBVQCOskkEfCpYkx5nFuQqqyU6dNiEWoA2qC4BgsRFify89sXGarClH5Df9F4WadSVbw6elQCANRFiw/tk7dcB5rI1FWGKEneSSTMRtv5euPMxla4KqoSoH5qZYHxILcupgd7gYPPEswuoFVp1aY0MAOZVtdZuTuSxJ6YOS5L7CXVHqCgEHi0y9QMAFDFdB0iQ9QXmDMRvhLTqFqtVaVPwxLSqszAhbkyx9/WcX8LaDUqOoZJDD1IhfnB+R8sejLkVGKCHIJFNSZAtJ1GO4+trYmTjGND16SOXI5yyiaZ0KdwSwJPrpEdxO2OVZWoYE8qz3DMPmOWJxHPll0tUDDxGliwEk8w1Tv3BEdPfFtZStMKxOlmkEEfhKkAdV3m8zaPPLVUk8/wBlory5ABd9geWL+p7mO2IHwz+I4nSVlJrNJUIECKNpNutgR13xRUyrVCXCVYa40i3tbGs/I08Iz2Z7IgsNWozBUWJjXOo9r7eeKqOT1vE3jlHeLx5ne3WMWZFdQCaZKkkkETEeY2t/LY9ao1NhWkABuQGBt5bdd/3x1O1hOMOq8RqU1JVoadJGlSoUjSRoII7ekYqq0U0KSwnQTAgwdVgb2mTa2LcvU8StTVzJcq7ae5IsTt+mKXpBHeoRAXfYSb6RbcGL9wOmOZOnx/UbeWRyWoAszQSCJJixF/bb5YsFRVRlFRnKMBTMFdLLuRudIEj+4npuFwZiCxBJsBPw6TFgPbDHM1qZqalAVWQGCFAVo54IIm95N7+WLasSa9jvIccppT0ueY/FpBYNO23/AI9rYUZ/S1TUskvJQAAAQdMTMA3mB5Gb4Bz6imyjVqBAfVBBGsAkEyR/mcF0M1opnV8C7CRMsCpjpsZn9sRHwqP1L2VKqCslxJXp6ai62QAqymGKjYi+4tIm4APTAjVqjKSampI5Suq1hBI+ITBF+3liWUdRT8RV/wCmxVTEyDsN+aC2nfYjacQWgEqFFADFioBJ5JB1CReVNu9x1xdrUiPuyrhbkBgNyGG8e58hvHlgyrXCSWLEQQoi5Dz03UQZ9+xwCmY0FmAEhz3AuT0tHeMUZeoSxLc3kevSAP274bjejbpYe5tahI1CQLAdYMm3nbAiQe8W9bxIAm98HGWvJLSIaTaOw6SfyHfFfIE5WYiT+kyY9Nv0xSeCPclW5pBAMGdURA26c1rQe+J8hgKxI1KCNhHUx7dRgBjD6YNxHncAj64mupQ0H8MmNhYx6xOHwV2gD6vEQKkqtrQo22gD0AtHriHEq+uqWBAjeJOmO5PxH/jCQVD8sWSxAEGN/XHSlRfY9PHzTptTolk1fG8zUqHuXsQOkAdTfCkOWYk+2OpZR2ICqT/O+H3C+DaSGqb9hgtIfFsByq1aMVLgzt3G0EYePnQNRpidZUrI5RH5b4jxuiBTJ7R+dsCcKfaIIWGKnYxNsY+WHKP3CWLB1k8rVzDjUWYjQ1Ro+FZLRHWw6dT64jWQ0lVoaxE3+EkGDHrb0ODPs/nhJYGC29rbQFI8onEuPZCr4jVBSFUaeXSNmibG5Bi8+RxzPozoxXFXLVmbu3ylV+tsarJsg06UnUBbeLdD074zHG6Bp1QC0khGJiJLIDt0w+ydB2UrTewQEFoAGoAkfFPe4w5r6UhrsrqutOooI8RixgsCVQm4Nvja9pEDfewsRVWoqk69ixMxNzojowN/pgZq1R1DQoFNriCGmQDPpPvgjwFKkzBEErPxGZ5T/b+eM7p0wStYV8azDlWUSAVJt1ET08/yx32O0+G7E7Ne/NBXcfIn2wdw/MrpYOAWMlNSggwrDYiDPUdxiv7HZ6nUNT7mlTBVdQUNBibqCTp32wpp8JKK+GUnqsb8TYaxqIK6CT5bfwDucLsw5qaBUqGppFhphlUxK6tyO0/TDB6BLDUxqU9JAZNxdSupfisB9JwrqiahZQYgTqM6SB9RYYPAuMVo5u2CVWdGhGIDMAUI7W28h7j3uTklH+uUNfUg9yQTb3xOhp8Ok7OCROrWJYERpuD+Z6YE4lmozCOp+8CiABcwx9gbkfXFzg5Wv3oRdDbjXPJJBKFVjsZL7dYY+lse0W8Oo6VG2AOhbyXK2nYwtvb0xVkaTlW1/ECD5ACSenn7ThejVJFQiWkM0dS0bD2PyxlFUnH96OTdjvjPDFan4lE8slo/pPb+bXwuyFasKawD16DucTy1fZmnwzd12kN5fzbDSEWxYg+ne4+mF448I1LQf1aj5xQplm0iBIJuDqj0Exh3k0RCPCVTVK6TU1E35ZJVhERNh3wjyOY0uHIJhwWvuLgiT3BO+G9R6QgEFteoRbUJ+EH+kRufljtny9fghUe00CMGOynUdAi63uCIjzGPaNWm2s1EBEhlnYHt9R8sDDMB6VJQAIDar8xAGkdbmxH1x3CqzczTOmH0wDqImYkESJkAi8YycE3o0qKnDM+hgwYGTPaOW3Tc29MetkqlQladMsUUFtMkCVkz6Q1/LF2RzFGpVqNUUQRy6ryRsT522H0xfmaulCRp1ll2EqdJ5ZQgiIB+mNWuLVE96KnoaEV2ZOYSqk85nuIkQO/oMVZuqRTRBtefMzYz5fWcMuLcWastPWwSmA2lFppoUkjVFgYM9zHlhVmE5QJiDFuuK+LFZXRrFFWHM6pKybabrbY98MaTGnRp1oBdqjjUzGFiegtJCxfr7YU5enUqFhSp1KjAX0IWIG0nSLC+5wz4ZU8NmDxCsrGykgpqHUHafzwSjfYf3PUql2YmCXPQADnAiwsNxiikAZmIB26mNxI2HTDRs03+o8RSoPKQVVQNgJ0gafpi/OcUrBixZWLWPLBPlb+Ww4w7QA3Ccq1Rvu+VD/1NfwWJNjuRYbXxqMpwHLOIr1TquEBAp0wp20qDpHpc9TjPjiJ0l0BkXgbz6bE4Ey3EnqOSy1ATclus73PX6Y1j40jNyY+f7G0KrOtGqQyTpNmVu1xfv8sZziPCKlI1S2kjSeZTaI7G4O1sW5+vUB+7QN/cSIHtOLszmHakquZZrE+u+9/+cOUF2OLeGTAxoKeVbw1gSY2mMAJw4ajzC0Eg2Plh/kqkWwrs3SoXrk21SDpPkT2w1ZXakIZtUkE4vzLDSSBOK8pnVCaSrzM/DP5dMDSLVgQybaHETZr6jNhaZtf+DBP2TpI7tTqGGaCtrfyMMa7qtNz0gkj2wn4epQxfV8VM7H1ntbr5Yw81tUmTPDVCgtIsPiCEEWgmdx+vt54EzlTxNaVWfmKnxUJ0C0gRO89DgJ88zOj1YV6pGuOnQcvQT+ZOGGXBVtQAKowk7gGd46j9j5YxUU/ZF30ZDjLkvd9enSoY7lQHA9bRh5wqsugFwIECQOcW3k9vLuMA/bN9VcMFABpqR589S5HQmdvTBGQdBTWZJKmY6XP5g/8AxweTi4pjWOi/PKXk0wQIYlSbaVgyJHxSAZ6ziVQ1Wo0tDKFYHUBeNMAC4sSJMzeekYqzTAqVBMyq+RUkR7yBhhlkdiqT8ELtCm0bbEg2PzxkkpSSrAaq0Qy+QU0zyFiptVcwJsdE/iFthJg4XcHy65eq7VRrUzpCMREmRcgTAtgniGeFGrUFQy4GkDeItgPIPU8QNTRoILKGKtFokBt4B+e18OV6k6X5JzobPxGmXDJl45SPjJMkrBmOkbeeGGSKaDUZSxAKsC0/EpK+ZiB6GMLuIOrBdAsUMHqZanB+Zw1yVLlYARrDMP7dJhfXc/LGSm4/7LUWwLMcKeGJ+M80DYgnVb09sJ+IUKn+oohhBcSvmC1sP8m9R+dqgCo0S3vGF/2gpVRWy7MQbuUHYKUMenX3xanOEuMmvsJpNWhgmYUHSWmVZSegMiT6HY+gOF9dNNR1DfDc/wC08v0wdwnIr4LF7G7AHcjt9PrgTJ8OU1jqcCm0A6iZiLCdpIEb9MYx8ibdei9wllpRQ5GoQN/lHp+2C6VVSAWN/TtYfTE+J1w55ByJpCMNidx7CJxT/pw/MfyB2tv12xvB/wAxXKIv6cTMFTKhmDWHMh9D+xA+WDuH5QaWL3VToqbFkBnQ69WURftbAubzQTMVjpkM761aBMvLAdoYW62Hni3JtUWm9UKPD/6bEkX1C1t7C87bY7ZW4mXspydNRVjW3h84LKmolQGuF8+52memI03ItE8syDEECRHviyi5X7xKfLYMRJFxFibiQSCJ64HyvhhvvJIIO0grtB7fnhtKwTwnkdIIZgSLTBIiDv54MrUzBqFm02CkgWsSAYspiYHn64GSmIVtIgFgzBjePfttAvj3Ln4jHiIJBBMCdJAMTuJ1D0w/uIKyoSstPL06bFmMkkF2WLyoVRP7HyvXWyb038JgJgDmJ0nqNjI7RNiMBDMGmQ1NyrgDa0X2nri3L5xqjaqhYkASzEkn5/y+M5J1Y49jLJ5WpTULSnxXMhVkxEQSwIld2vPT1wBm9GWHhjRVqmJMkooPQ7BiwIO8CNyLswfOvRpvTWArAgkknWRpJTzXmBPynGfCalNQktUcmxiTuSe/0jDhusp5gdSrlm16QOVSFAhbWsBYAxNu+OfiQeCwj0uMUZRpa53XHgympVEySx1QLrp7+xJ9sWnxdEDGjl30mojKATEMYkxNhBMX32xWTmJ+ER5FI+pwaaZKlwjlVAJMHY7H089vngOlnKZ2YfPGybFxRz5XMG4dR5av2XHmWyT6wa1QBRJMGSYBgAQDc2wS1QRvgYo71FVdu529fOB2wDVAPFIFZGAIBaL+35A4b0Hwl404PhlTKqWjvZhv6x9MM8vUDqGX+eWJkqRrB2HHMP0UEeoGLqNSoNqa+zicBUnWYa2GNFKfQCehxNlohnqxanpYQzkLE+f8+eDKGWJqAVVIYGzRZtInSDsBe3eBgMLTrpqpvpq0qjLDiaZ7HoR8zcTgLMfaaqD4dVdDDfT8J847H1xz+Xx+S1KKMpSTZo6eVSslRSdI6dlFpM+XbEOJVlp06YSwOlHCtcxMMR5t+mO4S1NqbsKisrH4QTBJXljrvIg4JzNA0haHLSskL4ikbEWPJ6+WMf50eXH47wfHLMn9ogdYJmfDG/k3+cX5RVNNZJ1C48wDeO5g4l9rKZDoSGBNNpLGZ0lSMG/ZvItVpyFcgEgsgUxOkxDMJ+eKnKLhyXQq0ozwNRqaqAIcR0nmAEnoIv8ALBeXzFRiFy6l2fUCSPhgwdMGT0ljAEYPqfZlnWrTpkeJNgzaXIABUqD0IIBBO6nAFBfDKUxNN1jWrWlvP679cYw8mVFlOLvSfEuGZdW8SoWd7BlUzfSd3jTNhsGm98BHiFIVJTL010qsFixaQDpgaonkN4H1w2fLU2VgWPiMTKnYsRymNvLAmU4G1Sp8NmXReyBgwPx7CLr/AL4xUJ/VTQmvgpbNMXUqFAvqApqbDSTAjrvO9hjRopRgsi6cpEaYYmIix2xOvmUogLQUBwpBqhbSYkKTEsdPxX2tgHxKVNPD1F0eNTSfumBMaQVBjzk7xacTKDZUWV5xqYUrB1QQSLiw3jFPFKlRgirJbYbSwYTa0giLgdDfBrfdqFKiUDMrbhpURfrMAj1wJxHNvRWko5qqFTJgzJJbpfmUD0Pribt78h9gbMUSraXVyywGYMT0G1vphi3DdQVVqNaZpMbNMGQZ3HY4lTc1C42Vzq9CBBEedvlj3MO1OKgdILBWRhfTJBI+W+MZ8s49/vsMRQFcU/C0wUMnz1RB9IAHti3wKf8AWT6U2P1AvgTMVGqSwYtfTtAIO4mdvXEmDiB4vQfiNpAMe23tjp8bbX1fgSow1GoFctUXWWB+K5BPU+c4YcDzSUw/iIHTTMEmFINmgH/b6OfTCxMs7uoXSdREEbCTF+oGL8uhUkssoJBN7GDcwJsea39PScdzSqjNN2WmuQ1UUpSkxHJNgJt3/PEMplmquygTAZomCAoLEAm2w+mIAMjapBBJCmbsB1jci0zit8093G7EjVG8jmHbYn54dNh09CtKFQFZhJ+E3BO1to698DPRZSZEau/cWmPngqi00BA1NqMaRzKLkk+tsWKxqrBIlBykfFYbMOx/qvB8jaHJoP7C96I3NiIg+/8Anv1xYwvEzaBG0b7i09/XFeYeojKrKQVIbSdrGfrH0wdmNMAmFcwfDjYECDPci59fI4bY18i7MZgkgkzAt9J97DFWYSDqU2I2EyN7Hv8A5wTmskV0vrR1IJBVrwDBBBgzII9jgdKg0kEGbQegFwZ9yt8VFp9CLeHvzjD/AOx9Gl471KxPhU/itILGdIP/AIk+oGM9kjzjF3EqpRPCVrO3iMF6k2UHvA6dCxw0rnQI0uf+18VHqUlQA8olAxt0AsO0k2xn+K5hqrmpVpeGWE6vD8ImOsDlaR1HrijglSpTqJVQoHpbayNIG3w6TvPTrfFma4yajuahLqZFxveQYMkX2Mzb5bJUJ2FcGfLNUWm1QUgd6hQtfsOgnvYY3XEvsnRGX8SiWFYDUGZp1jcqelxt2MbjHyjMV9ZmAJ3Axt/svx9moim/M1IxvcqfhvB8x7YbJqjFZzMa4gQBMd7mYPmMe5HNmke6ncft54M+0eT8OsxHw1CWHW5u1/U/XCmcFeik/aNhQK1FDLzA4lm8wtGmzADVsvmemMvkc81Iytwd1Ox/Y+eLOIZzxCDNsZ8NNeeHvDM8aThr6TAYdx39Rv8A840vE8gMxTlSC4Eo3fy9DjGk7Y0H2Y4lpJpNLDdBN/7gLGe4HrjUwkvYoyuaem+pTBBuDt5gjG84VxHxkerYsyFSPxAjSduthaMJ/tNw6l4bVVXS4IJIJ5pIFx03mYG2EnA8xDlJI1/CwmUYGVYRcdR/u645/wCI8KkrrS4SNb9rlDeEUZdHhVCDMbhbX2JMALgLhSnRCm4vAuOgJ7DAtSi4GlyGBbmeSfiUEG/cHreQR0vbwLNBV0kgB9Ktfa9yBIvF5O07Y5eKXjpFXtjqlWM02qF2csQom5AICrqOygze+57yLOM16hqfeKJ30g6iAI+XQ4qzHERqOlVhljVfVpMi07Dz88A5UknQx54YTIMmZmeszM45YePbllFuSNfwXOVGZESwuB8ICi5JLFSTubel8QNdF1O6NUp/EWZ+Vg19lACEHSYEnbpOEtGnUqAUrg3URvLX9+uLKeapIhSWep8KADlDMdAN+xO+9yYxrKcorq/ihKNjCrxGowmnT00wIpKV5VmZfSZElQwBbfmjbChlRkXW4UEGToZoN7RYEm2xi+L83TqUyygs9MFdNzpBZV0ArPZreWI5RFEIb1KhBWfMsIjvMfLDk21oqpkaWaK0/DJBWbTIIC3iDe5Ig/24qz7wVqEqdLDp/m8EDDLOZd6ay6wQB8Q1AgzEncHlIwjei8CAdFQ2F9Ii92jpIn1GMlbeop4OKeaWmyOgDX1aW+HppHt+owFxbOaqnikC8TImWNtjaJx3CmDeKag/6dM6VHfp7AgYjxfLt4W0zdY6kAGPXe2HFW6bFKnoTQU82rXrRlURZYIBBAHljxqM3YAE369dvpglkq+GhUTqUQRc3iJ9JwK2VqD8B2H5YqHkjFvRpYYmm4DatMiZg9R69PXDh67Ki6wdHlusG8jf/cD/AJTnKlWWmetvmJF+vb2wdSzlRaYGmeW3WRdSCJB9x5Y7JxumjOOXZXGp9S1ACGLCQQL7807fvgXOUnpsVK6JOpZuIO0HbbHUDA3M6h02mbb9f0wTSYrUINTwt5BuDHSIIPa+KpoG0ykyRMW9I/LBlHNEIKagASdUAFnnoZEHFFd4OkqR5dR+82wfkUQwdHiBRNVYIKgkBQGDQJEmbdR5jOW0TXsCrEuxMFmU6W7xIvve34h0gnB2aCCkwRjLHUwPxQtrg3AkW9MVZjIqpLU4DAAlQ4YKT5qOWe142k44uGptFnKQGH4heVM7HaIIBEjE460qxZn6QQoVm6BifMm49o/+Rx2YqO1NTBWmSRaNJO5tuDYGNrdIwNUVhL/hnTE7kgnbc2G/pjzUIsLTN/f98bpYhBWSyz6pIgCDfY6toMR9cT4xRNN76ZM3BmI+mBKNS8KSOx2m8kfPY4jnyQZncR9L+m/54cf6x+gPxPX+b48nEJx6Mbkk8N/sxnUpV5dQyspXS0wTYrMMI2iZtO2E+OR9JDDcEH5XwAfR+LVKdWmyGjSAg6SFll8w9yD7jHzhTj6BlqmpAfL8rYxHEKHh1aidAxj0Nx9CMMiLBseKMcccmEWTIxKk+lg3Y/8AOInHYYG/y0VaRVtmBU/z5H3xgnVqblT8SNB9QcaH7KZyNVMn+5f1/nlgP7W5bTUFUbVBB/7gP1H5HA9REcdD7gzZYGpUzZLoFUUkDFSzc+owPI7/ANw62wVw/wD061NVJepIFTm79IgCDbt3wn4nS+7olSHACC3d0af0w0ouwUWUR2P7fvjkivpOjGgjM8NauwNMpTcSQRZY62Av02wP/owQS7hXGncBdxYr38xv+WDXz4NMsqjxARBixI3Nu4sRgSiabgs5Yt5CQo+G5N9RI1E9zji8kpW3VAq69jbJZVg9Cpr8WlqPhutiWS+lhJKk29RgjJ8MDVcwjDSCeRralOuxHocJsnW1sxDhWMtYW1Lex/CdvnGGv2eZjmGkn71WKz/boY+vxH5Ynztvxvj60FiM1SztRfFVmMqUV996WlfoU+mHmZpio1JUpMXgCO/mD0G5k4A4vlCM7mVUA601wfNBqt/3T9cNhpYUiNQQ09TtYbLKqCL/AD9fPDbjJqXyl+UCuiviWdZX0swq8oVg9grDzG5t0+d8A5+g3hO2s+JoaoAPhQC59LD8sTqUDcaTrLFtNhoViWUX2MDr0wRnqbPSLASugpKi0EHr1638sTJ1JRXyUnaB/s8XY04Go1R4Z77g/wD6j+HF/EnSOXWNGosGMibAR0kmROBPsvmSEplRLSQJ2EiB9SD7YLziaaegzJIdmYbhbD1ksx9sW2JIjQydbTrAqGlM60kwJse8W9pwZ/qKotq+k/XrgHhnFqiZekgaNDFVMcw0sbT1FxY9sdV4hVZmbXuSbBR17DbE+TxpuwTS7Mp4jl1ZQbLvHRQdp336YJyehlDQRoAJDKbjrB2Fu5xTxPLeFVWmw5VJI5p1KSDYi0x2xOqUWTRqOAUIdHAkdCBe4giPzx2qSaXwyHYrerOuLBjI77x+R+mLkrq1ReTlW8SZPUCfXrvjxqRYsyrAk27QBb8sELlW8OlUKgKylVI6lTzfXFN4S7B6jtJc9bdh8sEZamG5DqlvMBe9/wA56Y7KZN6uoohYIBqIuBJ5fngXOPp5QZESe4bYj2OFxb6FQd/qg0U0kxfc3IEA73gAQenTHlVZDFWEtcAD8Qmbd+lvWML8hVKmT/Q3XrB0/WMSG4JmOrLc2O8TE4OFDTZOjXCszsivJBUMJGoFTdeoNxFt8CJSLkKCB5sQqi/Uk/XF6OAbIC7QFMSRczCmxJtc9Ae+CUQFKoikoFP43IlmQh4QEEhjdeWB3MY1SEBVMi6MNmF4KHWrAbsGWVIHW9vnEc0oc7idMi2/v+mK6tRjuSSLb7DsPL0xW8kdoxoobYA847EXeTfEWfFAWg47EFbEgcAGx+zlWaQHUW/T9MK/tPSior/1r9V/wR8sS+zNW7L5g/P/AIPzwX9p0mmrf0t9Db84w/RHUjLtjqe2ItixBGEWenHmPSceYYBPDa2iqjecH0NjjVcXprUosDbTzT203P0ke+MYTjbZeoGWTsR+YwESx2LqmYVMqhDFg8aVNtpWWPW04ryvFkChCuw3Nx632xn6rQzU3J5SV1DyJ3Xr1Nr364bcP4azsoUqykGWBsAOp/bfvGOfioRbbN+V9GlyH3sKQsagZJtAIN/LF2Uo6ZDEFGd0R7HUAx0EgG4sL23n1DFFfD8OmNrkne1rn32GJ0ss1OpUps6DQQolgT/UbSdI1LHv1xxSblr6HJr0M04eKZ5wGDg05UiJBEGxsYBUgxv8ysrnnUBgEHhg+GpXWqhjbnDhtRI8rL7YQZ2nRfdgakqQw6EjmBOwGr13jpi7h4gaqjfdK0VDNwQLCxuTBj0OIa5LLz0LkX8YFRc54niUmZ6YD6CdKzIMgklQNon/ANhJKZgU6dPTULBU6jS5JXSukTCiNi0mGmOmM5m8wGrHw0NMuxZENyAx2Y9o6fvJlms1UdFpmNKkgCYYNUAUKepUANB6ddsacbqsBSoccKWpX8QyNNV5Ync9gT2kz5aZOGS5t6bLTIVirMjqYCsANOm1ha4I/qBxVkHFOn4dIMXUAk7libwB07ec+Qxbl8jrpuWKA04aobaKYvIZ9g23KJNosYByXjblf/g4ukI+CUGFGopA5TsTcAg3+n5YbvSZ6ZkgqYCEGxj+R/twFwqn4ZqVGBfnYATY01Ygt3hiI3uEboceNmioPRDsOxEgf+wnFTj2wTqkW6BqRV+EBfIamGo/+30xLxj/AEU/kv7YHXM6qmhpVgRUJmxFwbdGEfy2HdXMZdSVFHUBYMdz9cSqa3AZ8/z5pQhXeDK/0spEeoPffHVZQgkGZ1IxEahP1FjgfNZssopsFJDTrXrbTB6HYXHbBWb4iWFOT8CFdtxaJHpjtSaaXrSGdQoVHptUAldRk7gSAYPUG+BjVfw7TpEgCbLNzbpPfHuXzlX8DMo1auWRBgCbXNhEfvgfXzE26+m3bvilFIHoRkayqGDkiF5ABYsSLNf4Yk2vYYJ4gVYtUZQC1PSiDYQIBNhJFjsJIwsNj5iRBAiNuvv6Ri5KrMQ1TUwHLMybbCTv6Ybj7EmRrIxCFojRpEf2Wgjv+c+uLXTck8wIkT8QMfXEapTQRDK+oWOxEGT5Xi2DczXRqdHkEqCH/uNoM9e+FdNKhsCpMdepRMTA6/LvfFeUSnoqO6zykUzeZOx3gRc2A2xelUIxKaTykc1xdb9r23HfAGYqfdqkQVA1e+r9PzxpARXNseA/3YrFTEq7Mqg25tsa2hAjbnFZbFlJS3p3x5XpwRGEM8Vji5MVLi0DAIZ8EraKo8wR/PacaDPjxKbr1IMeouPrGMll30up7Ef5+mNlSMgH+fycUiJYYpcTGLM5S0VHTsbehuPoRirCLOnHYty2VqVCRTps5AkhQTA7mMVupBgggjcEQR7YAIntjW5BoVR7fz54zGVyz1GGlSYIk9B6nbGn4ZxLwTUDKzAgFdMEiJDdcF12TLcM59ocuUrtII1AMJ8xB+oOLuHZ19Ipq2mOhA5v928326DrgjjOZbNOagUKlNDBJuQLn3k7dMe1UpLQpBdIqF5ex1RBiW7GRy/24ynJPC0sDeC5WoKzvqKrBLF73Q6gFM94A9esYuzldRUUkkP+ItzAjzi4jfY74Y8OQCiCSQGYBjFmUCwPQ3gwewwNxaihqJobWCjEtpYEkgEhp6LAjvczvjk5KUnfoujqAAIIpjcmo4OrUGPwhYAUb3N99tsMHzLNUFNNbyuszBMUwTuOylpIPQ74Wq7BSYIO5HUTEA9ie3leOrHLIykVAVClGUNqIu6xFtoMk7W1b2xDSStsboozKMcwJLCnTUnWRIT/ALR3jYTeO18dQy9SrWQ6ASzQ8iCS5BFth1+hxXnmdQBUDDQAAYlbGBcWO6/XDbK591ZSDyhdcj4mIs0nrY7YS9fAkky2ikIXqOadLYrTM1qo3gtA0KZECBI6Ec2Lc/mXqUkQKlJCdSUl+BFFl1H8R+JmPkMJOJIaNQ6m1qulXHW68rLeNQBt5dLYOq1mePD0shXSkH8KxPYiZvI798E20s69smK22V082tRvCWALT2g7CesLHuDjx6AqPaGpqqFebmLOhLD01Br9JHYYG4VapV1AEBdIPQGooIt5X+Y8sH5RPvKVMEaTJ1QIv3PTc27jClv7+xaqwlKC1QRUVkIKg1EupY2UVLaoabEbXnBa8PP/AOFn/uVrHzEH/Pe84ozOfWlUK+IdDLpPL7gnrue+5GA1zlenyJUYqCY0sdNzJi/cnGKzr8jZga1TUZEwJCjsO2PKz7QCLD8sW5nKmkzK4IZdwRG8fMRihzG23T+fTHrqnqMdLSICspInfmBM9eggHoPqcVVLsYt67D3GLIJE3AMA2mI6/wA88XZbJO9Q01hj3B5Y7zhJaFgoWWFwZPSb38xg7hOZWlUJdFYXXmE6b2ItYggfUbE403B+C5dVY1mBqfhvEen+cZ7P0kWo6ILLMkfviXTdMd10AZmNVrwTzX5p2O9vbHoQtpCcxIAgd7YvywVFZnpB5HLqZgF84Ugn3MY7/WFSOYyFgaeUANIMbbgkTgk36Ee06IQGV1HYCCb+n7/LAueoVAolNImxiJiZv1jbFhfoAI9P5fEkUCm1949wD1HUdfUDCja1gJ0UkxgzPJKJ648rUtKgzcyPa1/f9MXVB92s9/0xpJ9DKAuK66SMTSAD3nHtZRJAMgddvpirAAW2LkQnYE+gOGWWA7YNWui7sB6kYpEtiVcrUP8A9t/lH540+SrNpAYRIB+e/wBZwKM/S/rH1/QYuocRpabsLE9+87ET1wNE2/aB+McPerUVqazywxkASCY6yTB+gxTk+DVNUvpCje8n8sNX4jTABvpbYhT6YKzVZadMuZ2tiJSSVIabGGXy6ZdNFNAH0ayx2ZgG3O5g28gbYoz9Q1AFfmRxOmLcrkjzmAo3i218F1V8QCohBU0yR56gSI+Ywo4xmqVKnp8VTVVGVVTmhmIIJPQCDYi84E9G02e13SmlyqKNtgB6f4wNlKCt97Mi8COhvN8ZWo7OZdix8ySf55Y1/C6bCgqvaJA7xJYD6nGf8Q5caQ4pR0CORlXVFLCJt0Uj0tE4F4jlwlOnBJM9rRBn0O1sPhmtNNqafiBFvIW+eO/+mBaavVMD8Q7i+/zxzq0/1LtFdKtTNBNSMdDGX1mDqNlCEwIAJkd7748/1UAchvKvBgLBAuSbWI+eKlztPxLjWiyiA/AAzS5jcm59ceVXX/prUL6i8OQQqi8+bWtNvIYhr6hNYFCiQBUUSqkwCLFtmgd1kepn1NbZiprUJKQdUGwPbUDab9d5OB6VUEkKo0aYXzK9T5mTf07YMy2aSqIYyYiOpjYW3xD71FJekVZvMV6hMyS11EbKpgyBG179lBw7pOS9NNCK5KrYgyYJJI2tC/DG+2M3mKD06jggoVAMaifiCkXgGYIt+2CshXBCrOkhi+qb6rW9SJPmV88a0kqSIumHZujNTTUqUytI3DFgzmwvyxFgARsB8qaVCqNb00bw2uyjsZuvY4JrZULrDc2ljzd4Jgnv798BCvUp1NanmEAelv8AjGc04scaYXmQKehB8dTmYRBWNKwR0MKLeZ74YJk0NMnV95NlWbztIPe20e+EGezLGsSBYoGg3IJmTO4mO+GL5TUlOsG8OF0bWeUmfYFRbr2gxEk6xlnlbJl0gExIhnsSQQSPM2Fh3xosrwmpoXkZbRBRulpsOu/vjPJUqLOligAHNbUJuDNytm3XpG+JeLlPxU2qHq7C7efp28oxUKS0N9GPpPqJQkNMczfEAvYk2H7YpqmOVTYkT7be37Y8VoY2B8jtf6j1xJKQsVHs569tQ3nobecb49CjJEDU0kqCbyLdR+vfBmQzZHwmGiJwEaguEJhwA07m8me1x08sRqU2WDEdr+n8/wCMCBodLnmCshMltoEkH3j88EjKpTokuwLvvgCnTbww5sSbYJy9FHHOZPef5bEN8dYVaoXVHao2kLIFpxHNZZhzGmEBiwYmPmSb+eGGdGlPEpMulTBworZqqQNRYXBU7C07H1j5YIyct9AkeK5DX6fzbBFFA29lW0zc9AIOAjIYNeTeb3kDHj1CLYqtGWZk6mm3YDFgXkvsCJwIJk4JB+7PlhsAVdp6zhlWyX3dNwyGUJMHmEEAyPVoHkML6cEgHacF16ZQdwVsfWPywTvEgFtYc2IqMSzMzjymcaLoR0Y4HHuHfAuGU6obU0EbDA3QE+CgOgQ9Di/7WVIFNBtBnEspw6pRrBVGpW2P74cZn7M1MyytMKpg2nfGD/5F8CrTEstTwwSW0bKCTA9BsMQoUdRjoN/LH0biv2F5FAq2Xpb9sJcz9mSlOFqR/V540c0kMQZMoH1n4U2Hc40SM1SDsCLjt2wNlOBAwCeVTPrjX1uDtRoa4DdbYxk+XQ2hPWyi06ZqEgQJ/wAYW1qz5ikC7lEB5dItP9x329sP+K00NKd1K3B9MJa3Faa5WolOne14iLgfrPthXQ0iXh0lpqtX4pPON7mR7Yqz+WZVtpKEkgqBCAxA9zck9h54q4FnlAXxE1r36j9+uG3FeMU2kImkAXWNwepwuKv7ibYhSoKlNKVNmFT8IF9bE2sBM9N8RpKVqFhyvF+uhwbxG/cevlg3LcHNRDWomAJtPNYXAPTt74WZeuQCFUAtuT9AB0A+s4ilqQ22aHhfCmr0ySFVFB52Zi194WYM9ScDLkIhdYYg3858+mCeDMaIV6ksKnNpnoOmmYvI38u11KOwAcHSwksDYR2v1EEYItNYLi0rG1bNFAoJJB3Mb3jrv3x5nKFQHWYKkwAAJ8pthr9mOEjOVGLArTpGWP8AV2G9p3xfxriIFapTFOn4AiF03+7XWW1LDTAIAkiGvM4XkWJ2Px+zNOKbZsJJGkaWddmIJ1QPWQDtAGHvCKXiVaupQaSKOWOVfxCO152wjqcLYVKZGoSkkkbGT8sbDhWbp0MvVjnYkSeptGMqTzrC2Z3PVjUqNTpgBLAxuQqgEnsAo+Q88Qy+dphQBSBiRLOdRgkXgYu4dQpmGq1AgYmTYEJYxHQyDft640P/ANU4PT5CoJWxOkmffrjSHhzsTkfJmPP/AJjBjqGp6euOx2O32YvoqyvDSTBYfPFr5CJXUYBx2OwCtk827aVT8IxUlSBHXHY7EvouIwzFJHGimYLC47n0xSOHpS0g81Vjt/P1x2OxzuT5KPoPQ4zf2fNOn4tchYHKv5ScYyodTGB1+mOx2OlDLRVXTphVjYm7Ge5FgPLpj1SdDzjsdgYA6YcZJg9ODcrjsdheQmXQlzyRUI87YlUy2gKPxt0x2OxfwNBmb4X4dOmrN961ys/CPPBnCMtUpvIAIPbb547HYlydFDxqzKQYvvg3gXH3psaZMqxmeoOOx2MpeyIml4pQQ0WqCofE/wC61+kbYwGYztSq4TYDe9rY9x2FL/BXsg/GHSoSBqgRC/CLYbZX7XVWUU6gsbbY7HYvilHAY3rpR8FjWeFj4Zj/ADjKZl0am6UY0NaTM2jqb47HYyZUegfL1ERSBJ0G8K0SepPQY7izBihCFDHU/GDtaT1B3x2Owf8AYfoK4Fxc0lIb4C2/aw6Yk1APUDgqNVQyrHodj739Pz7HYyljf6i9muocD+78SuwSgomLyx8pvf8AWMZ/JaauabSqp+IJa0MQs/3EEG/fHY7GiiorB99jbiHF2ytNqFNdJIlyu5kXj0vir7PMao1sbkaVLW1bXgHyA9vPHY7DcU6shMM499nsw7oyVEKXlRIPzvOAKGSanIqAoFUFhtNyFAOzEnp0GOx2M/LFRWFLspz5pLXOsKU0gMCZgxf38sLs3w2jrPPP/j//AEMdjsRzbSLjFWz/2Q==",
                        placeholder: (context, url) =>
                            CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                      Text(chr.starwarspeople.starwaspeople[index].name)
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
