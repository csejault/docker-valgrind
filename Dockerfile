# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: csejault <csejault@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/21 11:05:57 by csejault          #+#    #+#              #
#    Updated: 2021/09/22 13:37:54 by csejault         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		ubuntu

ENV			DEBIAN_FRONTEND=noninteractive

WORKDIR		/root

RUN			apt-get update; \
			apt-get install -y \
			apt-utils \
			build-essential \
			bash \
			clang \
			vim \
			valgrind ;

#(OPTIONAL)	INSTALL LIBRARIES
RUN			apt-get install -y \
			libncurses5-dev \
			libreadline-dev ;

ENTRYPOINT	"/bin/bash"
